.class public Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;
.super Ljava/lang/Object;
.source "UpsellContentPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "SamplingUpsellContentPlugin"
    role = .enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->content:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;)Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->contentPluginContext:Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    return-object p1
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 13

    .line 41
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 42
    sget-object v0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Upsell content plugin initializing"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 44
    new-instance v6, Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/sitb/android/metrics/MetricEventFactory;

    new-instance v2, Lcom/amazon/sitb/android/services/ClockService;

    invoke-direct {v2}, Lcom/amazon/sitb/android/services/ClockService;-><init>()V

    invoke-direct {v1, v2}, Lcom/amazon/sitb/android/metrics/MetricEventFactory;-><init>(Lcom/amazon/sitb/android/services/ClockService;)V

    invoke-direct {v6, v0, v1}, Lcom/amazon/sitb/android/metrics/MetricsService;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/sitb/android/metrics/MetricEventFactory;)V

    .line 45
    new-instance v0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;

    .line 46
    const-class v5, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    sget-object v7, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_TIME:Lcom/amazon/sitb/android/Metric;

    sget-object v8, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_ATTEMPT:Lcom/amazon/sitb/android/Metric;

    sget-object v9, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_ENABLED:Lcom/amazon/sitb/android/Metric;

    sget-object v10, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_FAILURE:Lcom/amazon/sitb/android/Metric;

    sget-object v11, Lcom/amazon/sitb/android/Metric;->MODULE_INIT_DISABLED:Lcom/amazon/sitb/android/Metric;

    const-string v4, "Upsell content plugin initialization"

    move-object v2, v0

    move-object v3, p0

    move-object v12, p1

    invoke-direct/range {v2 .. v12}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;-><init>(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 64
    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->execute()Ljava/lang/Object;

    return-void
.end method
