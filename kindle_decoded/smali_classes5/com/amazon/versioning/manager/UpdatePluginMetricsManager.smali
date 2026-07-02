.class public Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;
.super Ljava/lang/Object;
.source "UpdatePluginMetricsManager.java"


# instance fields
.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 21
    iput-object p2, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    return-void
.end method

.method private isBlank(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 109
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public performReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "Attempting API call to performAction,  metricsKey was: %s, metricsValue was: %s"

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "Could not report reading streams, metricsKey and/or metricsValue was blank, metricsKey was: %s, metricsValue was: %s"

    .line 36
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KCUPA"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public recordReadingStreamsMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "KCUPA"

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->readingStreamsEncoder:Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    invoke-interface {v4, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object p3, v0, v3

    const-string p1, "Atempting API call to recordMetadata,  metricsKey was: %s, mapKey was: %s, mapValue was: %s"

    .line 55
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Could not report metrics since the indicated mapValue is null"

    .line 58
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    const-string p1, "Could not report metrics, metricsKey and/or mapKey was blank, metricsKey was: %s, mapKey was: %s"

    .line 61
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Could not report metrics, metricsKey and/or metricsValue was blank, MetricsKey was: %s, MetricsValue was: %s"

    .line 76
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "KCUPA"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "KCUPA"

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p3, p0, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {p3, p1, p2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "Could not report metrics since the indicated mapValue is null"

    .line 96
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "Could not report metrics, metricsKey and/or metricsValueAsMapKey was blank, metricsKey was: %s, metricsValueAsMapKey was: %s"

    .line 99
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
