.class public Lcom/amazon/nwstd/metrics/helper/ZoomSession;
.super Ljava/lang/Object;
.source "ZoomSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

.field private mStartZoomingTime:J

.field private mTotalDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method private reportEvent(Ljava/util/AbstractCollection;Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/HashMap<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/metrics/IMetricsLogger;

    .line 106
    invoke-interface {v0, p2, p3}, Lcom/amazon/nwstd/metrics/IMetricsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onPauseSession(J)V
    .locals 6

    .line 61
    sget-object v0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "pausing the zoom session"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mStartZoomingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 63
    iget-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mTotalDuration:J

    .line 64
    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mStartZoomingTime:J

    :cond_0
    return-void
.end method

.method public onResumeSession(J)V
    .locals 3

    .line 74
    sget-object v0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "resuming the zoom session"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iput-wide p1, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mStartZoomingTime:J

    return-void
.end method

.method public stopSession(JLcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;Ljava/util/AbstractCollection;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;",
            "Ljava/util/AbstractCollection<",
            "Lcom/amazon/nwstd/metrics/IMetricsLogger;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "stopping the zoom session"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mStartZoomingTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 88
    iget-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mTotalDuration:J

    sub-long/2addr p1, v0

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mTotalDuration:J

    .line 90
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-wide v0, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mTotalDuration:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->mOrientation:Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p2, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STOPPED:Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-direct {p0, p4, p2, p1}, Lcom/amazon/nwstd/metrics/helper/ZoomSession;->reportEvent(Ljava/util/AbstractCollection;Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/HashMap;)V

    return-void
.end method
