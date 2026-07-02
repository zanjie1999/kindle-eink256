.class final Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorDownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownloadAsync(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $metricEvent:Ljava/lang/String;

.field final synthetic $metricKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/FalkorDownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    iput-object p2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$metricKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$metricEvent:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->invoke(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 5

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$metricKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getDOWNLOAD_MANAGER_CLASS()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$metricEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getDOWNLOAD_MANAGER_FAILED_CLASS()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$metricEvent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1$1;

    invoke-direct {p2, p0}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1$1;-><init>(Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
