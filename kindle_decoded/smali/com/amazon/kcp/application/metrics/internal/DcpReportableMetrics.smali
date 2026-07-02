.class public Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;
.super Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;
.source "DcpReportableMetrics.java"

# interfaces
.implements Lcom/amazon/kindle/krx/metrics/IMetricsSettings;


# static fields
.field private static final APP_VERSION_KEY:Ljava/lang/String; = "AppVersion"

.field private static final APP_VERSION_STRING_KEY:Ljava/lang/String; = "AppVersionString"

.field private static final DEBUG_VERSION:Ljava/lang/String; = "Debug"

.field private static final INTERNAL_RELEASE_VERSION:Ljava/lang/String; = "InternalRelease"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.application.metrics.internal.DcpReportableMetrics"


# instance fields
.field private volatile appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field protected volatile appVersionStringValue:Ljava/lang/String;

.field protected volatile appVersionValue:Ljava/lang/String;

.field private final dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

.field private debugLoggingEnabled:Z

.field private defaultDomain:Ljava/lang/String;

.field private metricsEnabled:Z

.field private final metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->debugLoggingEnabled:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->initializeDefaultDomain(Landroid/content/Context;Z)V

    .line 73
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDCMMetricsFactoryProvider()Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    .line 74
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->getMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->defaultDomain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;)Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->dcmMetricsFactoryProvider:Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/kindle/krx/metrics/MetricsData;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->convertToMetricEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V

    return-void
.end method

.method private convertToMetricEvent(Lcom/amazon/kindle/krx/metrics/MetricsData;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 7

    .line 211
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getProgram()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/client/metrics/common/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 223
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionValue:Ljava/lang/String;

    const-string v2, "AppVersion"

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 224
    iget-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionStringValue:Ljava/lang/String;

    const-string v2, "AppVersionString"

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 226
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getTimingMetrics()Ljava/util/Map;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    .line 235
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-interface {v0, v3, v5, v6}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 236
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->getFreeText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 237
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->getFreeText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getCountingMetrics()Ljava/util/Map;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;

    .line 246
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->getCount()I

    move-result v5

    int-to-double v5, v5

    invoke-interface {v0, v4, v5, v6}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 247
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->getFreeText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 248
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->getFreeText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazon/client/metrics/common/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getFreeText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 254
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getFreeText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/client/metrics/common/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0

    .line 218
    :cond_8
    sget-object p1, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "the MetricsFactory did not return us an event, so we cannot log the passed data."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MetricsFactory returned a null event"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    sget-object v1, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-interface {v0, p1, p2, v1}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    sget-object p2, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->TAG:Ljava/lang/String;

    const-string v0, "Exception "

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static shouldUseDefaultDomainName()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFAEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private submitMetricsTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 270
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->defaultDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;
    .locals 0

    return-object p0
.end method

.method protected initializeAppVersions()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-nez v0, :cond_3

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-nez v0, :cond_2

    .line 115
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Debug"

    .line 117
    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionValue:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionStringValue:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->isBetaApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "InternalRelease"

    .line 122
    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionValue:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InternalRelease"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionStringValue:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v1

    .line 127
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionValue:Ljava/lang/String;

    .line 129
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appVersionStringValue:Ljava/lang/String;

    .line 131
    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 133
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method protected initializeDefaultDomain(Landroid/content/Context;Z)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->default_domain_name_for_metrics:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->defaultDomain:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->shouldUseDefaultDomainName()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$1;-><init>(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDebugLoggingEnabled()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->debugLoggingEnabled:Z

    return v0
.end method

.method public isMetricsEnabled()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsEnabled:Z

    return v0
.end method

.method public reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 1

    .line 188
    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics$2;-><init>(Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->submitMetricsTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugLoggingEnabled(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->debugLoggingEnabled:Z

    return-void
.end method

.method public setMetricsEnabled(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;->metricsEnabled:Z

    return-void
.end method
