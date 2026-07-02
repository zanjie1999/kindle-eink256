.class public final Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;
.super Ljava/lang/Object;
.source "RecordAZScrubberMetrics.kt"


# static fields
.field private static final FIELD_KEY_LIBRARY_VIEW:Ljava/lang/String; = "library_view"

.field private static final FIELD_KEY_USER_ACTION:Ljava/lang/String; = "user_action"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;-><init>()V

    .line 7
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RecordAZScrubberMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportActionMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "libraryView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AZScrubber Action metrics, libraryView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AZ_SCRUBBER_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AZ_SCRUBBER_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics$reportActionMetrics$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordAZScrubberMetrics$reportActionMetrics$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
