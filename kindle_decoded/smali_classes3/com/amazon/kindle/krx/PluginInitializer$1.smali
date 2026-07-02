.class Lcom/amazon/kindle/krx/PluginInitializer$1;
.super Ljava/lang/Object;
.source "PluginInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/PluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/PluginInitializer;

.field final synthetic val$entryPoint:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

.field final synthetic val$markerFactory:Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$plugin:Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/PluginInitializer;Ljava/lang/String;Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/IReaderPlugin;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->this$0:Lcom/amazon/kindle/krx/PluginInitializer;

    iput-object p2, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$markerFactory:Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    iput-object p4, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p5, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$plugin:Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    iput-object p6, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$entryPoint:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "PLUGIN_INITIALIZER_"

    .line 178
    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->access$000()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitializePlugin-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$markerFactory:Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V

    .line 182
    invoke-static {v2}, Lcom/amazon/kindle/krx/util/TraceProxy;->beginSection(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$plugin:Lcom/amazon/kindle/krx/plugin/IReaderPlugin;

    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/plugin/IReaderPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 190
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$markerFactory:Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;->createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/performance/PerformanceMarker;->emit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$entryPoint:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/amazon/kindle/krx/util/TraceProxy;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 198
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error initializing plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    iget-object v3, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/krx/PluginInitializer$1;->val$entryPoint:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/amazon/kindle/krx/util/TraceProxy;->endSection()V

    .line 204
    throw v3
.end method
