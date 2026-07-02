.class Lcom/amazon/kcp/application/AnnotationCache$50;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "AnnotationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AnnotationCache;->uploadAndResetJournal(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AnnotationCache;

.field final synthetic val$journal:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/amazon/foundation/internal/IObjectCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AnnotationCache;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 0

    .line 1712
    iput-object p1, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iput-object p3, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->val$journal:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->val$resultCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 7

    .line 1717
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 1719
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1720
    iget-object v1, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    monitor-enter v1

    .line 1721
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    iget-object v4, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->val$journal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/application/AnnotationCache;->equalsIgnoreJournalTimestamp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1722
    iget-object v3, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->this$0:Lcom/amazon/kcp/application/AnnotationCache;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AnnotationCache;->resetJournal()V

    .line 1723
    sget-object v3, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->SUCCESS_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    .line 1724
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Journal upload succeeded and cache was reset"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1726
    :cond_0
    sget-object v3, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;->CONCURRENT_MODIFICATION_DETECTED_INSTANCE:Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    .line 1727
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Journal upload succeeded but cache changed during upload"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    :goto_0
    sget-object v4, Lcom/amazon/kcp/application/AnnotationCache;->METRICS_CLASS:Ljava/lang/String;

    const-string v5, "UploadJournalSuccess"

    sget-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1732
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1734
    :cond_1
    new-instance v3, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/amazon/kcp/application/AnnotationCache$UploadAndResetJournalResult;-><init>(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 1735
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Journal upload failed"

    invoke-static {v1, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    sget-object v1, Lcom/amazon/kcp/application/AnnotationCache;->METRICS_CLASS:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "UploadJournalError"

    aput-object v6, v4, v5

    .line 1737
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%s:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 1736
    invoke-virtual {v0, v1, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1741
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AnnotationCache$50;->val$resultCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v0, :cond_2

    .line 1742
    invoke-interface {v0, v3}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_2
    return v2
.end method
