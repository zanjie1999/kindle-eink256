.class public final Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;
.super Ljava/lang/Object;
.source "RecordConsumeContentSpan.kt"


# static fields
.field private static final FAST_METRICS_VALUE_DISABLED:Ljava/lang/String; = "disabled"

.field private static final FAST_METRICS_VALUE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final FAST_METRICS_VALUE_FALSE:Ljava/lang/String; = "false"

.field private static final FAST_METRICS_VALUE_TRUE:Ljava/lang/String; = "true"

.field private static final FAST_METRICS_VALUE_UNSUPPORTED:Ljava/lang/String; = "unsupported"

.field private static final IN_BOOK_NAV_ACTION_KEY:Ljava/lang/String; = "action_type"

.field private static final IN_BOOK_NAV_BOOK_LENGTH_KEY:Ljava/lang/String; = "book_length"

.field private static final IN_BOOK_NAV_CONTEXT:Ljava/lang/String; = "context"

.field private static final IN_BOOK_NAV_COUNT_KEY:Ljava/lang/String; = "count"

.field private static final IN_BOOK_NAV_END_POSITION_KEY:Ljava/lang/String; = "navigation_end_location"

.field private static final IN_BOOK_NAV_NAV_MODE_KEY:Ljava/lang/String; = "navigation_mode"

.field private static final IN_BOOK_NAV_START_POSITION_KEY:Ljava/lang/String; = "navigation_start_location"

.field private static final POSITIONS_CONSUMED_CONTEXT_KEY:Ljava/lang/String; = "context"

.field private static final POSITIONS_CONSUMED_CONTINUOUS_SCROLL_STATE_KEY:Ljava/lang/String; = "continuous_scroll_state"

.field private static final POSITIONS_CONSUMED_END_POSITION_KEY:Ljava/lang/String; = "end_position"

.field private static final POSITIONS_CONSUMED_IS_SCROLLED_OVER_KEY:Ljava/lang/String; = "is_scrolled_over_span"

.field private static final POSITIONS_CONSUMED_SPAN_TYPE_KEY:Ljava/lang/String; = "span_type"

.field private static final POSITIONS_CONSUMED_START_POSITION_KEY:Ljava/lang/String; = "start_position"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;-><init>()V

    .line 14
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordConsumeContentSpan;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "spanType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-class v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v1, :cond_3

    .line 47
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->POSITIONS_CONSUMED_V2:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 48
    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    const-string v3, "fastMetrics.getPayloadBu\u2026me, schema.schemaVersion)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string/jumbo v3, "verticalScrollState"

    .line 51
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string/jumbo v3, "unsupported"

    :goto_0
    int-to-long v4, p2

    const-string p2, "start_position"

    .line 54
    invoke-interface {v2, p2, v4, v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    int-to-long v4, p3

    const-string p3, "end_position"

    .line 55
    invoke-interface {p2, p3, v4, v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    .line 56
    invoke-interface {p2, v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string p2, "span_type"

    .line 57
    invoke-interface {p0, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p0

    const-string p1, "continuous_scroll_state"

    .line 58
    invoke-interface {p0, p1, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p4, :cond_2

    const-string p0, "isScrolledOverSpan"

    .line 61
    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "true"

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string p1, "is_scrolled_over_span"

    .line 63
    invoke-interface {v2, p1, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 65
    invoke-interface {v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_3
    return-void
.end method

.method public static final emitFastNavMetricsV2(Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;)V
    .locals 6

    const-string v0, "metric"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 73
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->FAST_NAVIGATION_V2:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 74
    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "fastMetrics.getPayloadBu\u2026me, schema.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getContext()Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "context"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getActionType()Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_type"

    invoke-interface {v2, v4, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getNavMode()Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "navigation_mode"

    invoke-interface {v2, v4, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getStartPosition()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "navigation_start_location"

    invoke-interface {v2, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getEndPosition()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "navigation_end_location"

    invoke-interface {v2, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getBookLength()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "book_length"

    invoke-interface {v2, v5, v3, v4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getCount()I

    move-result v3

    const-string v4, "count"

    invoke-interface {v2, v4, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 84
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 86
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getContext()Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getActionType()Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getNavMode()Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getStartPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getEndPosition()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getBookLength()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/amazon/kindle/cs/FastNavigationMetricsPayload;->getCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    .line 86
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "context: %s; actionType: %s; navMode: %s; startPosition: %d; endPosition: %d; bookLength: %d; count: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->getP0LoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->logToFileForP0SpanTesting(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
