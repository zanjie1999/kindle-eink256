.class public final Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;
.super Ljava/lang/Object;
.source "BookOpenLocationMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final emitBookOpenMetric(Ljava/lang/String;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->BOOK_OPEN_LOCATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->BOOK_OPEN_LOCATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics$emitBookOpenMetric$1;

    invoke-direct {v2, p1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics$emitBookOpenMetric$1;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final reportBookOpened()V
    .locals 2

    .line 48
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    const-string v1, "book_opened"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromBookInBar()V
    .locals 2

    .line 106
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    const-string v1, "bibb"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromExternalSource()V
    .locals 2

    .line 98
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    const-string v1, "external"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromHome(I)V
    .locals 3

    .line 72
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromLibrary(I)V
    .locals 3

    .line 60
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromSearch()V
    .locals 2

    .line 88
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method

.method public static final reportBookOpenedFromStore()V
    .locals 2

    .line 80
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;

    const-string v1, "store"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->emitBookOpenMetric(Ljava/lang/String;)V

    return-void
.end method
