.class public Lcom/amazon/metrics/ClickstreamMetrics;
.super Ljava/lang/Object;
.source "ClickstreamMetrics.java"


# static fields
.field private static final DEFAULT_ASIN:Ljava/lang/String; = "DefaultASIN"

.field private static final HIT_TYPE:Ljava/lang/String; = "deviceAction"

.field private static final PROGRAM_NAME:Ljava/lang/String; = "KindleReader"

.field private static final QUERY_STRING:Ljava/lang/String; = "QUERY_STRING"

.field private static final SITE_VARIANT:Ljava/lang/String; = "ANDROID"

.field private static final SOURCE_NAME:Ljava/lang/String; = "KindleReader"

.field private static final TAG:Ljava/lang/String; = "com.amazon.metrics.ClickstreamMetrics"

.field private static final TEAM_NAME:Ljava/lang/String; = "KEDU"

.field private static metricsFactoryInstance:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getBasicEvent(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/client/metrics/common/MetricsFactory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;"
        }
    .end annotation

    const-string v0, "KindleReader"

    .line 80
    invoke-interface {p0, v0, v0}, Lcom/amazon/client/metrics/common/MetricsFactory;->createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;

    move-result-object p0

    .line 82
    new-instance v0, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;

    const-string v1, "deviceAction"

    const-string v2, "KEDU"

    const-string v3, "ANDROID"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->getCurrentBookAsinData()Lcom/amazon/client/metrics/common/clickstream/ASINData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->setASINData(Lcom/amazon/client/metrics/common/clickstream/ASINData;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;

    .line 84
    invoke-virtual {v0, p2}, Lcom/amazon/client/metrics/common/clickstream/UsageInfo;->setSubPageType(Ljava/lang/String;)Lcom/amazon/client/metrics/common/clickstream/UsageInfo;

    .line 85
    invoke-interface {p0, v0}, Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;->setUsageInfo(Lcom/amazon/client/metrics/common/clickstream/UsageInfo;)V

    .line 87
    new-instance p1, Lcom/amazon/client/metrics/common/DataPoint;

    invoke-static {p3}, Lcom/amazon/metrics/ClickstreamMetrics;->getMetadataQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/amazon/client/metrics/common/DataPointType;->DV:Lcom/amazon/client/metrics/common/DataPointType;

    const-string v0, "QUERY_STRING"

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1, p3}, Lcom/amazon/client/metrics/common/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V

    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/client/metrics/common/MetricEvent;->addDataPoint(Lcom/amazon/client/metrics/common/DataPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    sget-object p1, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/metrics/ClickstreamMetrics;->TAG:Ljava/lang/String;

    const-string p3, "Clickstream Metric Data Points Failed"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 177
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentBookAsinData()Lcom/amazon/client/metrics/common/clickstream/ASINData;
    .locals 4

    .line 104
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/amazon/client/metrics/common/clickstream/ASINData;

    if-nez v0, :cond_0

    const-string v0, "DefaultASIN"

    :cond_0
    const-wide/16 v2, 0x6f

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/client/metrics/common/clickstream/ASINData;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getMetadataQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    if-nez p0, :cond_0

    .line 118
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 121
    :cond_0
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asin"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guid"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->isExploreByTouchEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    .line 144
    :catch_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "&"

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initializeMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->metricsFactoryInstance:Lcom/amazon/client/metrics/common/MetricsFactory;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    sput-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->metricsFactoryInstance:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->metricsFactoryInstance:Lcom/amazon/client/metrics/common/MetricsFactory;

    return-object v0
.end method

.method private static isExploreByTouchEnabled()Z
    .locals 2

    .line 165
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 56
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/metrics/ClickstreamMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->initializeMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, p0, p1, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->getBasicEvent(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;

    move-result-object p0

    .line 62
    sget-object p1, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    sget-object v1, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    :cond_0
    return-void
.end method

.method public static recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/metrics/ClickstreamMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordEventWithMetadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/amazon/metrics/ClickstreamMetrics;->initializeMetricsFactory()Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object v0

    .line 73
    invoke-static {v0, p0, p1, p2}, Lcom/amazon/metrics/ClickstreamMetrics;->getBasicEvent(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;

    move-result-object p0

    .line 74
    sget-object p1, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    sget-object p2, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    :cond_0
    return-void
.end method

.method public static setKindleReaderSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/amazon/metrics/ClickstreamMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
