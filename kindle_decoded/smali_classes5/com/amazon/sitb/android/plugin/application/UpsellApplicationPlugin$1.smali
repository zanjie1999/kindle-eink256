.class Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;
.super Lcom/amazon/sitb/android/metrics/MeasuredTask;
.source "UpsellApplicationPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->ensureEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

.field final synthetic val$metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 72
    iput-object v0, v9, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object/from16 v0, p11

    iput-object v0, v9, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->val$metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/metrics/MeasuredTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    new-instance v0, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    iget-object v1, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->val$metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->access$002(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    .line 77
    new-instance p1, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;

    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    invoke-static {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->access$000(Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;)Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;-><init>(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)V

    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPluginStarter;->start()V

    const/4 p1, 0x0

    return-object p1
.end method
