.class public final Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "KRIFGestureMetricsHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private lastGestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

.field private lastNavigationEventTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->context:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final isTimeWithinThreshold(JJ)Z
    .locals 1

    sub-long/2addr p1, p3

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const/16 p3, 0xfa

    int-to-long p3, p3

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final declared-synchronized reportPageTurnMetrics()V
    .locals 6

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastGestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    .line 57
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastNavigationEventTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->isTimeWithinThreshold(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$reportPageTurnMetrics$1;-><init>(Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;)V

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastGestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    .line 67
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastNavigationEventTime:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const-string v0, "event.docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastNavigationEventTime:Ljava/lang/Long;

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->reportPageTurnMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    sget-object v4, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;-><init>(FFLcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastGestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->reportPageTurnMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 35
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string p3, "eventOne"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "eventTwo"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v2

    sget-object v3, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;-><init>(FFLcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->lastGestureEventData:Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler$GestureEventData;

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;->reportPageTurnMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 42
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
