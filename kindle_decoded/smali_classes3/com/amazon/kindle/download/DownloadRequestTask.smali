.class public final Lcom/amazon/kindle/download/DownloadRequestTask;
.super Ljava/lang/Object;
.source "DownloadRequestTask.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/services/download/IDownloadRequest;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/download/DownloadRequestTask<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private completionTimeUTC:Ljava/util/Calendar;

.field private final creationTimeUTC:Ljava/util/Calendar;

.field private final delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

.field private final request:Lcom/amazon/kindle/services/download/IDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

.field private final sequenceId:J

.field private workStartTimeUTC:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            "Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    iput-object p2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    iput-object p3, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

    .line 34
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->creationTimeUTC:Ljava/util/Calendar;

    .line 57
    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getREQUEST_SEQUENCE$p()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->sequenceId:J

    return-void
.end method

.method private final comparePriority(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/services/download/IDownloadRequest;)I
    .locals 3

    .line 99
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadRequestComparator;

    invoke-direct {v0}, Lcom/amazon/kindle/services/download/DownloadRequestComparator;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/services/download/DownloadRequestComparator;->compare(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/services/download/IDownloadRequest;)I

    move-result v0

    .line 100
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    const-string v1, "bookAsset"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->shouldPreemptCurrentDownload()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    const-string v2, "other.bookAsset"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->shouldPreemptCurrentDownload()Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-ne p1, p2, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/download/DownloadRequestTask;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    iget-object v1, p1, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/DownloadRequestTask;->comparePriority(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/services/download/IDownloadRequest;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->sequenceId:J

    iget-wide v2, p1, Lcom/amazon/kindle/download/DownloadRequestTask;->sequenceId:J

    cmp-long v0, v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/download/DownloadRequestTask;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->compareTo(Lcom/amazon/kindle/download/DownloadRequestTask;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 119
    instance-of v0, p1, Lcom/amazon/kindle/download/DownloadRequestTask;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/amazon/kindle/download/DownloadRequestTask;

    iget-object p1, p1, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCompletionTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->completionTimeUTC:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCreationTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->creationTimeUTC:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    return-object v0
.end method

.method public final getWorkStartTimeUTC$com_amazon_kindle_dm()Ljava/util/Calendar;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->workStartTimeUTC:Ljava/util/Calendar;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    const-string v0, "request.bookAsset"

    .line 61
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->workStartTimeUTC:Ljava/util/Calendar;

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running download task for asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

    iget-object v3, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 66
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->onBeforeExecute()V

    .line 67
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    iget-object v3, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 70
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->onRequestComplete()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Download task for asset "

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " completed successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v2

    const-string v4, "errorDescriber"

    .line 76
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 79
    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 80
    sget-object v4, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_ONCOMPLETE_REJECTED_DOWNLOAD:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-interface {v2, v4}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 81
    sget-object v4, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v2

    const-string v5, "errorDescriber.internalError"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": onRequestComplete rejected download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " without setting a reason"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 81
    invoke-virtual {v4, v2, v5, v0}, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed with error state "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

    iget-object v2, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->request:Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/download/DownloadRequestTaskKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot run the download request for asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since it was cancelled"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/util/TimeUtils;->getUtcCalendarForCurrentTime()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->completionTimeUTC:Ljava/util/Calendar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;->onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/download/DownloadRequestTask;->delegate:Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;

    invoke-interface {v1, p0}, Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;->onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    throw v0
.end method
