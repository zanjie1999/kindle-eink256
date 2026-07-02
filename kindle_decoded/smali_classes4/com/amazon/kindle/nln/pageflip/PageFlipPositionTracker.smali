.class public Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;
.super Ljava/lang/Object;
.source "PageFlipPositionTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private startRange:Lcom/amazon/android/docviewer/IPositionRange;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private emitMetrics(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;J)V
    .locals 5

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    .line 84
    :cond_1
    invoke-static {p1, p2}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->areRangesContiguousOrOverlapping(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    .line 85
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    add-int/2addr v1, v3

    if-eqz v0, :cond_3

    .line 86
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    sub-int/2addr p1, v3

    .line 88
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-direct {p0, v0, v3, p3, p4}, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->emitMetricsHelper(Lcom/amazon/android/docviewer/IPositionRange;ZJ)V

    goto :goto_5

    :cond_4
    if-nez v2, :cond_7

    if-eqz v0, :cond_5

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    add-int/2addr p3, v3

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    :goto_3
    if-eqz v0, :cond_6

    .line 92
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    sub-int/2addr p1, v3

    .line 93
    :goto_4
    new-instance p2, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {p2, p3, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 97
    :cond_7
    :goto_5
    invoke-direct {p0, p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->emitMetricsHelper(Lcom/amazon/android/docviewer/IPositionRange;)V

    return-void
.end method

.method private emitMetricsHelper(Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 105
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->emitMetricsHelper(Lcom/amazon/android/docviewer/IPositionRange;ZJ)V

    return-void
.end method

.method private emitMetricsHelper(Lcom/amazon/android/docviewer/IPositionRange;ZJ)V
    .locals 7

    const-string v3, "Chrome"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-wide v0, p3

    move-object v2, p1

    move v5, p2

    .line 115
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public onNonLinearNavigationEvent(Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->getNlnMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v0, v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->getEventType()Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;->START:Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->getRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->startRange:Lcom/amazon/android/docviewer/IPositionRange;

    .line 49
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->startTime:J

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->startRange:Lcom/amazon/android/docviewer/IPositionRange;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/pageflip/NonLinearNavigationEvent;->getRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    iget-wide v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->startTime:J

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;->emitMetrics(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;J)V

    :cond_1
    :goto_0
    return-void
.end method
