.class Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->registerOpenTimeMetricReporters(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field final synthetic val$newsstandDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field final synthetic val$openStartTime:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;JLcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    iput-wide p2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->val$openStartTime:J

    iput-object p4, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->val$newsstandDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 534
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->NWSTD_OPEN:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 535
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 536
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 535
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 538
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->val$openStartTime:J

    sub-long v8, v0, v2

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->val$newsstandDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    .line 545
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v5, "NewsstandTextViewTimer"

    const-string v6, "NewsspaperOpen"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v5, "NewsstandTextViewTimer"

    const-string v6, "TextViewOpen"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$3;->val$newsstandDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->removeOnInitialDrawListener(Ljava/lang/Runnable;)V

    return-void
.end method
