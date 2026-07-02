.class public final Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;
.super Ljava/lang/Object;
.source "RecordTtsFastMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordContinuousReadingStarted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;

    const-string v1, "ContinuousReadingStarted"

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics;->recordFastMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final recordFastMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CONTINUOUS_READING_TTS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->CONTINUOUS_READING_TTS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics$recordFastMetric$1;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordTtsFastMetrics$recordFastMetric$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
