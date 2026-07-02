.class public final Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/assets/IAssetStateManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 4

    .line 150
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request is not an IDownloadRequest "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-static {v0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getOrCreateDownloadStatus(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->setByteProgress$com_amazon_kindle_dm(J)V

    .line 157
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getShouldReport$com_amazon_kindle_dm()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getLastProgressUpdateTimeStamp$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getProgressThrottleInMs$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-gez p3, :cond_2

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getLastProgressUpdateTimeStamp$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 167
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$reportCurrentProgress(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)V

    :cond_3
    return-void
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 9

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request is not an IDownloadRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    move-object v1, p1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getOrCreateDownloadStatus(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    move-result-object v0

    .line 98
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    .line 101
    monitor-enter v0

    .line 102
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getRequestStatus$com_amazon_kindle_dm()Lcom/amazon/kindle/webservices/RequestStatus;

    move-result-object v3

    .line 103
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    check-cast v6, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Got status update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", previous status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->setRequestStatus$com_amazon_kindle_dm(Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 107
    iget-object v4, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    const-string v5, "bookAsset"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v5

    const-string v6, "bookAsset.priority"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5, v3, p2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$updateStatusCountMap(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/AssetPriority;Lcom/amazon/kindle/webservices/RequestStatus;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 110
    sget-object v3, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne v3, p2, :cond_2

    .line 112
    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getDownloadRequestGroup$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v3

    if-nez v3, :cond_2

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getDownloadRequestGroup$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v4}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v4

    .line 114
    move-object v5, p1

    check-cast v5, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v5}, Lcom/amazon/kindle/webservices/IWebRequest;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 115
    sget-object v6, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->FACTORY:Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;

    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-virtual {v6, p1}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;->build(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    move-result-object p1

    .line 113
    invoke-virtual {v3, v4, v5, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->setErrorDetails(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;Lcom/amazon/kindle/webservices/ErrorDomainInfo;)V

    .line 120
    :cond_2
    invoke-static {p2}, Lcom/amazon/kindle/services/download/AssetState;->getFromRequestStatus(Lcom/amazon/kindle/webservices/RequestStatus;)Lcom/amazon/kindle/services/download/AssetState;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/amazon/kindle/services/download/IBookAsset;->setState(Lcom/amazon/kindle/services/download/AssetState;)V

    .line 121
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getAssetStateManager$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 122
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v6

    .line 124
    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v7

    .line 121
    invoke-interface/range {v3 .. v8}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;J)V

    .line 125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    .line 127
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getIsCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getDownloadRequestGroup$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->onAssetDownloadComplete(Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getDownloadRequestGroup$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->translateToGroupStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportGroupStatus(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit v0

    throw p1
.end method

.method public setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request is not an IDownloadRequest "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;->this$0:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-static {v0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->access$getOrCreateDownloadStatus(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->setTotalBytes$com_amazon_kindle_dm(J)V

    return-void
.end method
