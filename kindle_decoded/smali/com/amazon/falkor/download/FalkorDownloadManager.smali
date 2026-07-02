.class public abstract Lcom/amazon/falkor/download/FalkorDownloadManager;
.super Ljava/lang/Object;
.source "FalkorDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDownloadManager.kt\ncom/amazon/falkor/download/FalkorDownloadManager\n*L\n1#1,222:1\n*E\n"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/falkor/download/DownloadResponseHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->action:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->headers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "GET"

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/download/FalkorDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$initiateDownloadAsync(Lcom/amazon/falkor/download/FalkorDownloadManager;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownloadAsync(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method private final initiateDownloadAsync(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 9

    .line 122
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;

    invoke-direct {v1, p0, v0, v7, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;-><init>(Lcom/amazon/falkor/download/FalkorDownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 139
    new-instance v2, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;

    invoke-direct {v2, p0, v7, v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;-><init>(Lcom/amazon/falkor/download/FalkorDownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/amazon/falkor/download/FalkorDownloadManager;->createResponseHandler(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Lcom/amazon/falkor/download/DownloadResponseHandler;

    move-result-object v3

    .line 155
    iput-object v3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;

    .line 157
    iget-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/download/DownloadResponseHandler;->setDownloadStatus(Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    :cond_2
    return-void

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.applicationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    .line 163
    new-instance v8, Lcom/amazon/falkor/download/FalkorDownloadRequest;

    iget-object v2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v4, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->action:Ljava/lang/String;

    move-object v0, v8

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/falkor/download/FalkorDownloadRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;Ljava/util/Map;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitDownloadManagerStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1, v8}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createResponseHandler(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)Lcom/amazon/falkor/download/DownloadResponseHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/falkor/download/DownloadResponseHandler<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "onSuccessful"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onFailure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/amazon/falkor/download/JsonResponseHandler;

    iget-object v1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/amazon/falkor/download/JsonResponseHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/DownloadResponseHandler;->getResponse()Ljava/lang/Object;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/DownloadResponseHandler;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getUrl(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
.end method

.method public initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownload$1;-><init>(Lcom/amazon/falkor/download/FalkorDownloadManager;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccessful(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager;->responseHandler:Lcom/amazon/falkor/download/DownloadResponseHandler;

    return-void
.end method

.method public final retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    return-void
.end method
