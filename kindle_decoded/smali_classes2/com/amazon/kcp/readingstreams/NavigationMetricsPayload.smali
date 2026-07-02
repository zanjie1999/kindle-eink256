.class public final Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;
.super Ljava/lang/Object;
.source "NavigationMetricsPayload.kt"

# interfaces
.implements Lcom/amazon/kindle/cs/AggregatedMetric;


# instance fields
.field private final context:Ljava/lang/String;

.field private final isScrollEvent:Z

.field private final isVerticalScroll:Z

.field private final positionRange:Lcom/amazon/android/docviewer/IPositionRange;

.field private shouldAggregate:Z

.field private final timestamp:J


# direct methods
.method public constructor <init>(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "positionRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->timestamp:J

    iput-object p3, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    iput-object p4, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->context:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent:Z

    iput-boolean p6, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->shouldAggregate:Z

    return-void
.end method


# virtual methods
.method public aggregate(Lcom/amazon/kindle/cs/AggregatedMetric;)Lcom/amazon/kindle/cs/AggregatedMetric;
    .locals 8

    const-string v0, "otherMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    if-eqz v0, :cond_2

    .line 22
    check-cast p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    iget-object v0, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->context:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->context:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent:Z

    iget-boolean v2, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll:Z

    iget-boolean v2, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    iget-object v2, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-static {v0, v2}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->areRangesContiguousOrOverlapping(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const-string v1, "this.positionRange.start"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v1, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v2, "otherMetric.positionRange.start"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v2, "this.positionRange.end"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    iget-object p1, p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const-string v2, "otherMetric.positionRange.end"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 28
    new-instance v4, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v4, v0, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 29
    new-instance p1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    iget-wide v2, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->timestamp:J

    iget-object v5, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->context:Ljava/lang/String;

    .line 30
    iget-boolean v6, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent:Z

    iget-boolean v7, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll:Z

    move-object v1, p1

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;-><init>(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZ)V

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->timestamp:J

    return-wide v0
.end method

.method public final isScrollEvent()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent:Z

    return v0
.end method

.method public final isVerticalScroll()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll:Z

    return v0
.end method
