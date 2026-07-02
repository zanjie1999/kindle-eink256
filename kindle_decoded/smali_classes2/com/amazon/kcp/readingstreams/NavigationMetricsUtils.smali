.class public final Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;
.super Ljava/lang/Object;
.source "NavigationMetricsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$EventListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

.field private static P0_TEST_LOGGING_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final WEBLAB_TREATMENT_ENABLED:Ljava/lang/String; = "T1"

.field private static existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

.field private static newMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

.field private static final p0LogPath:Ljava/lang/String;

.field private static p0LoggingPrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    .line 28
    const-class v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->TAG:Ljava/lang/String;

    const-string v0, "IBEX/Consume_Content_P0"

    .line 35
    sput-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->p0LogPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getP0LoggingPrintWriter$p(Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;)Ljava/io/PrintWriter;
    .locals 0

    .line 27
    sget-object p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->p0LoggingPrintWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static final areRangesContiguousOrOverlapping(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 4

    const-string v0, "startRange"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0, p1}, Lcom/amazon/android/docviewer/IPositionRange;->overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const-string v2, "startRange.end"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 65
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v3, "endRange.start"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    const-string v0, "startRange.start"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const-string v0, "endRange.end"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    add-int/2addr p1, v1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final initialize()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$EventListener;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$EventListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private final sendAggregatedNavigationMetricToFastMetrics(Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;)V
    .locals 7

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isVerticalScroll()Z

    move-result v1

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent()Z

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getContext()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getTimestamp()J

    move-result-wide v4

    move-object v0, p0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->setupMetadata(ZZLjava/lang/String;J)Ljava/util/HashMap;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v3, "aggregatedMetric.positionRange.start"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const-string v5, "aggregatedMetric.positionRange.end"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const-string v6, "Text"

    .line 139
    invoke-static {v1, v6, v2, v4, v0}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 144
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 146
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->isScrollEvent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getContext()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 147
    invoke-virtual {p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v2, v0

    .line 144
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "FastMetrics Payload: Range: %s; isScrolledOver: %s; Context: %s; time: %d; metadata: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->getP0LoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->logToFileForP0SpanTesting(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final declared-synchronized sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V
    .locals 12

    move-object v0, p3

    const-class v8, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    monitor-enter v8

    :try_start_0
    const-string v1, "metricRange"

    move-object v9, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v10, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    .line 80
    new-instance v11, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    move-object v1, v11

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;-><init>(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZ)V

    .line 81
    sput-object v11, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->newMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    if-nez v10, :cond_0

    .line 85
    sput-object v11, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v10, v11}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->aggregate(Lcom/amazon/kindle/cs/AggregatedMetric;)Lcom/amazon/kindle/cs/AggregatedMetric;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    instance-of v2, v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    sput-object v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    goto :goto_0

    .line 93
    :cond_2
    sput-object v11, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emit aggregated metric range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-direct {v1, v10}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendAggregatedNavigationMetricToFastMetrics(Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;)V

    .line 99
    :goto_0
    sget-object v1, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    move/from16 v2, p6

    move/from16 v3, p5

    move-object v4, p3

    move-wide v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->setupMetadata(ZZLjava/lang/String;J)Ljava/util/HashMap;

    move-result-object v7

    if-nez p4, :cond_3

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 103
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "Text"

    .line 104
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v4, "metricRange.start"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const-string v5, "metricRange.end"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    move-object v2, p3

    move-object v6, v7

    .line 103
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 108
    :cond_3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "ReadingStreams Payload: Range: %s; isScrolledOver: %s; Context: %s; time: %d; metadata: %s"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    const-string v10, "metricRange.start"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    const-string v9, "metricRange.end"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-virtual {v7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 108
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private final setupMetadata(ZZLjava/lang/String;J)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "verticalScrollState"

    if-eqz p1, :cond_0

    const-string p1, "enabled"

    .line 117
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "disabled"

    .line 119
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "Chrome"

    .line 122
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ContentSpanType"

    const-string p3, "NavMode"

    .line 124
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 128
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "scrollTimeStart"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isScrolledOverSpan"

    const-string/jumbo p2, "true"

    .line 129
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final flushAggregatedMetrics()V
    .locals 1

    .line 158
    sget-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendAggregatedNavigationMetricToFastMetrics(Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;)V

    const/4 v0, 0x0

    .line 161
    sput-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->existingAggregateMetric:Lcom/amazon/kcp/readingstreams/NavigationMetricsPayload;

    :cond_0
    return-void
.end method

.method public final getP0LoggingEnabled()Z
    .locals 1

    .line 185
    sget-boolean v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->P0_TEST_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final logToFileForP0SpanTesting(Ljava/lang/String;)V
    .locals 1

    const-string v0, "logOutput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$logToFileForP0SpanTesting$1;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$logToFileForP0SpanTesting$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
