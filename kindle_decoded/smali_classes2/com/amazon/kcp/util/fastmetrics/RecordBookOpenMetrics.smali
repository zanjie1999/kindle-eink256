.class public final Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;
.super Ljava/lang/Object;
.source "RecordBookOpenMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$collectCommonMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->collectCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method private final collectCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$collectCommonMetrics$1;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$collectCommonMetrics$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final emitBookOpenMetrics(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONE_TAP_BOOK_OPEN:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONE_TAP_BOOK_OPEN:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->collectCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 47
    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final emitOpenCanceledMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTimes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONE_TAP_OPEN_CANCELED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONE_TAP_OPEN_CANCELED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;

    invoke-direct {v2, p1, p3, p4, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$emitOpenCanceledMetrics$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;)V

    .line 60
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    sget-object p1, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->INSTANCE:Lcom/amazon/kindle/metrics/FalkorMetricUtils;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportOpenCanceledMetrics(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
