.class public final Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;
.super Ljava/lang/Object;
.source "BookOpenIndexMetrics.kt"

# interfaces
.implements Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;


# instance fields
.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final recencySyncHelper:Lcom/amazon/kindle/contentupdate/RecencySyncHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;-><init>(Lcom/amazon/kindle/contentupdate/RecencySyncHelper;Lcom/amazon/kindle/krx/metrics/IMetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/contentupdate/RecencySyncHelper;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 1

    const-string v0, "recencySyncHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->recencySyncHelper:Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    iput-object p2, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/contentupdate/RecencySyncHelper;Lcom/amazon/kindle/krx/metrics/IMetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 62
    invoke-static {}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->getInstance()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 63
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string p3, "MetricsManager.getInstance()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;-><init>(Lcom/amazon/kindle/contentupdate/RecencySyncHelper;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    return-void
.end method


# virtual methods
.method public reportBookIndexOpenedFromHome(I)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->recencySyncHelper:Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sync_"

    goto :goto_0

    :cond_0
    const-string v0, "nosync_"

    .line 83
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Index"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "book_opened_from_home"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "BookOpenIndexMetrics"

    invoke-interface {v1, v3, v0, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method public reportBookIndexOpenedFromLibrary(I)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->recencySyncHelper:Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sync_"

    goto :goto_0

    :cond_0
    const-string v0, "nosync_"

    .line 73
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Index"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "book_opened_from_library"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "BookOpenIndexMetrics"

    invoke-interface {v1, v3, v0, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method
