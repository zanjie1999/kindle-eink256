.class public Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;
.super Ljava/lang/Object;
.source "ContinuousScrollReadingStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contextChrome:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private fastMetricsStartScrollTime:Ljava/lang/Long;

.field private gotFastNavigationEvent:Ljava/lang/Boolean;

.field private lastMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

.field private lastScrolledOverMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

.field private metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

.field private metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

.field private metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

.field private metricsStartScrollTime:J

.field private startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->gotFastNavigationEvent:Ljava/lang/Boolean;

    .line 111
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->contextChrome:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 119
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->resetMetrics()V

    return-void
.end method

.method private emitCSFastNavigationMetrics(Lcom/amazon/kindle/event/KindleDocNavigationEvent;Lcom/amazon/kindle/event/KindleDocNavigationEvent;J)V
    .locals 11

    .line 416
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 417
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-direct {p1, v1, p2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 419
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/IntPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/IntPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 422
    :goto_0
    invoke-static {v0, p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->areRangesContiguousOrOverlapping(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/IntPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/IntPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    add-int/2addr v1, v3

    if-eqz p2, :cond_2

    .line 424
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/IntPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/IntPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    sub-int/2addr p1, v3

    .line 426
    new-instance v6, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v6, v1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v7, "Chrome"

    move-wide v4, p3

    invoke-static/range {v4 .. v10}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "[ScrollEvent] Context is Chrome. %s - %s)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private getReadingContext()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->contextChrome:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Chrome"

    return-object v0

    :cond_0
    const-string v0, "Reading"

    return-object v0
.end method

.method private resetMetrics()V
    .locals 2

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    .line 392
    iput-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    .line 393
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    iput-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartScrollTime:J

    return-void
.end method

.method private sendScrolledOverMetric(Lcom/amazon/krf/platform/PositionRange;ZZ)V
    .locals 11

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    if-nez v0, :cond_0

    .line 283
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string p2, "Trying to send a scroll event with no start"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 288
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    if-eqz p2, :cond_5

    .line 293
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-ltz p2, :cond_2

    .line 294
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 296
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v7, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v7}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 297
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v7, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v7}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez p2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-nez p2, :cond_9

    .line 308
    sget-object p2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-ne v0, p2, :cond_6

    .line 309
    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_4

    .line 314
    :cond_6
    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    .line 317
    :goto_4
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v5

    add-long/2addr v5, v3

    if-eqz p3, :cond_7

    .line 318
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p1

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p1

    sub-long/2addr p1, v3

    .line 320
    :goto_5
    new-instance p3, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    invoke-direct {p3, v5, v6, p1, p2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    .line 321
    iget-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastScrolledOverMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    if-eqz p1, :cond_8

    .line 322
    invoke-virtual {p3, p1, v0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->removeOverlap(Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    move-result-object p3

    :cond_8
    if-eqz p3, :cond_9

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 326
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->getReadingContext()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    iget-wide v2, p3, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x2

    iget-wide v0, p3, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "[ScrollEvent] Context is %s. %s - %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    iget-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartScrollTime:J

    new-instance v2, Lcom/amazon/android/docviewer/IntPositionRange;

    iget-wide p1, p3, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    long-to-int p2, p1

    iget-wide v3, p3, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    long-to-int p1, v3

    invoke-direct {v2, p2, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 328
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->getReadingContext()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 327
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V

    .line 329
    iput-object p3, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastScrolledOverMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    :cond_9
    return-void
.end method

.method private setContextChrome(Z)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->contextChrome:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 433
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public getScrollNavigationDirection()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    return-object v0
.end method

.method public onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 344
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 350
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 355
    :cond_1
    monitor-enter p0

    .line 358
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 359
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->GOTO:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_3

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    if-nez v0, :cond_2

    .line 361
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->fastMetricsStartScrollTime:Ljava/lang/Long;

    :cond_2
    const/4 v0, 0x1

    .line 365
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->gotFastNavigationEvent:Ljava/lang/Boolean;

    .line 366
    invoke-direct {p0, v0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->setContextChrome(Z)V

    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_4

    .line 369
    invoke-direct {p0, v2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->setContextChrome(Z)V

    .line 373
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->gotFastNavigationEvent:Ljava/lang/Boolean;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    const-class v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    if-eqz v1, :cond_5

    .line 379
    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    iget-object v3, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->fastMetricsStartScrollTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->emitCSFastNavigationMetrics(Lcom/amazon/kindle/event/KindleDocNavigationEvent;Lcom/amazon/kindle/event/KindleDocNavigationEvent;J)V

    .line 382
    :cond_5
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->startEvent:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->fastMetricsStartScrollTime:Ljava/lang/Long;

    .line 384
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->gotFastNavigationEvent:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 384
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 387
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public onPositionRangeChanged(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    if-nez v0, :cond_1

    .line 223
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string v0, "Got a positionRangeChanged before a pre navigation"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 229
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int v1, v3

    .line 228
    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string v0, "Got a placeholder event range for onPositionRangeChanged"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {v2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    if-lez v5, :cond_3

    .line 240
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->NEXT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->PREVIOUS:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    :goto_0
    move-object v2, v0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_5

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->sendScrolledOverMetric(Lcom/amazon/krf/platform/PositionRange;ZZ)V

    .line 250
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartScrollTime:J

    .line 254
    :cond_5
    iput-object v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 255
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 12

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 173
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int v1, v3

    .line 172
    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string v0, "Got a placeholder event range for onPostNavigation"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_1
    new-instance v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    .line 179
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    .line 182
    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    if-nez v1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->removeOverlap(Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;)Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->getReadingContext()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-wide v4, v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "[ConsumeEvent] Context is %s. %s - %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    iget-wide v5, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartScrollTime:J

    new-instance v7, Lcom/amazon/android/docviewer/IntPositionRange;

    iget-wide v3, v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->smaller:J

    long-to-int v4, v3

    iget-wide v8, v0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;->larger:J

    long-to-int v3, v8

    invoke-direct {v7, v4, v3}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 192
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->getReadingContext()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 191
    invoke-static/range {v5 .. v11}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V

    .line 193
    iput-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    .line 199
    :cond_3
    invoke-direct {p0, p1, v2, v1}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->sendScrolledOverMetric(Lcom/amazon/krf/platform/PositionRange;ZZ)V

    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->resetMetrics()V

    return-void
.end method

.method public onPreNavigation(Lcom/amazon/krf/platform/PositionRange;Z)V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 135
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int v1, v3

    .line 134
    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string p2, "Got a placeholder event range for onPreNavigation"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 144
    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    if-nez p2, :cond_2

    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartScrollTime:J

    .line 148
    sget-object p1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;->UNKNOWN:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsScrollDirection:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationDirection;

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    if-nez p1, :cond_3

    .line 153
    new-instance p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    iget-object p2, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    .line 154
    invoke-virtual {p2}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;-><init>(JJ)V

    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->lastMetricRangeSent:Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper$PositionPair;

    goto :goto_0

    .line 157
    :cond_2
    sget-object p1, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->TAG:Ljava/lang/String;

    const-string p2, "Got a new pre navigation event during a navigation in CS"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendCurrentMetrics()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsCurrentRange:Lcom/amazon/krf/platform/PositionRange;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->metricsStartRange:Lcom/amazon/krf/platform/PositionRange;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->sendScrolledOverMetric(Lcom/amazon/krf/platform/PositionRange;ZZ)V

    .line 268
    invoke-direct {p0}, Lcom/amazon/kcp/readingstreams/ContinuousScrollReadingStreamHelper;->resetMetrics()V

    :cond_1
    return-void
.end method
