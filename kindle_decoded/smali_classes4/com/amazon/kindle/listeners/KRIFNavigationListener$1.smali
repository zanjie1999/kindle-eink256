.class Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;
.super Ljava/lang/Object;
.source "KRIFNavigationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/listeners/KRIFNavigationListener;->onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

.field final synthetic val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    iput-object p2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "KRFView- onPostNavigation"

    const/4 v1, 0x1

    .line 115
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 116
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kindle/rendering/KRIFView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFView;->isDoneWithInitialDraw()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->onInitialDraw()V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    .line 120
    invoke-static {v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v6, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v6, v5, v3

    sget-object v6, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v6, v5, v1

    const-string v6, "bookRenderOnInitialDraw"

    invoke-virtual {v2, v6, v4, v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 123
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v2}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kindle/rendering/KRIFView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/rendering/KRIFView;->setDoneWithInitialDraw(Z)V

    .line 125
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v1}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$000(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kindle/rendering/KRIFView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFView;->updateTransientHighlights(Lcom/amazon/krf/platform/PositionRange;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/event/NavigationEvent;->isPagingTransition()Z

    move-result v1

    .line 129
    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-eqz v1, :cond_2

    .line 130
    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v4}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 131
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    iget-object v2, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-static {v2, v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$200(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/krf/platform/event/NavigationEndEvent;)Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    move-result-object v2

    .line 135
    sget-object v4, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne v2, v4, :cond_1

    const-string v4, "next"

    goto :goto_0

    :cond_1
    const-string v4, "prev"

    .line 136
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v6}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v4}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    sget-object v5, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_END:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-static {v4, v5}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$300(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/event/PageTurnEvent$EventType;)V

    goto :goto_1

    .line 142
    :cond_2
    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ACX_GOTO:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-object v5, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v5}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/amazon/kcp/util/Utils;->endChromeFirePerf(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    .line 144
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    sget-object v5, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    iget-object v6, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v6}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v6

    invoke-static {v4, v5, v1, v2, v6}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$400(Lcom/amazon/kindle/listeners/KRIFNavigationListener;Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;ZLcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;Lcom/amazon/krf/platform/PositionRange;)V

    .line 145
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->didNavigate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$100(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    goto :goto_2

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$500(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->onPostNavigation(Lcom/amazon/krf/platform/PositionRange;)V

    goto :goto_2

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->this$0:Lcom/amazon/kindle/listeners/KRIFNavigationListener;

    invoke-static {v0}, Lcom/amazon/kindle/listeners/KRIFNavigationListener;->access$500(Lcom/amazon/kindle/listeners/KRIFNavigationListener;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/listeners/KRIFNavigationListener$1;->val$event:Lcom/amazon/krf/platform/event/NavigationEndEvent;

    invoke-virtual {v1}, Lcom/amazon/krf/platform/event/NavigationEvent;->getCurrentRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->onPostNavigation(Lcom/amazon/krf/platform/PositionRange;)V

    :goto_2
    return-void
.end method
