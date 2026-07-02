.class final Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FalkorDownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
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

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    iput-object p2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->$metricEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->$metricKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 130
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v2}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitDownloadManagerEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getDOWNLOAD_MANAGER_CLASS()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->$metricEvent:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->$metricKey:Ljava/lang/String;

    .line 131
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1$1;-><init>(Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$successfulCallback$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
