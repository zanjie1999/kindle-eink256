.class Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;
.super Ljava/lang/Object;
.source "MopReaderActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/MopReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstPageRenderedCallback"
.end annotation


# instance fields
.field private final m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/MopReaderActivity;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$000(Lcom/amazon/kcp/reader/MopReaderActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$100(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$200(Lcom/amazon/kcp/reader/MopReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v2

    const-string v3, "asin"

    .line 152
    invoke-virtual {v2, v3, v1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 153
    invoke-virtual {v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 155
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MopReaderActivity$FirstPageRenderedCallback;->m_activity:Lcom/amazon/kcp/reader/MopReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/MopReaderActivity;->access$300(Lcom/amazon/kcp/reader/MopReaderActivity;)V

    return-void
.end method
