.class Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;
.super Lcom/amazon/sitb/android/metrics/MeasuredTask;
.source "UpsellContentPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

.field final synthetic val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 53
    iput-object v0, v9, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getInstance()Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->val$sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->ensureEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    new-instance v1, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;-><init>(Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->access$002(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    .line 60
    new-instance p1, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;

    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin$1;->this$0:Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;

    invoke-static {v0}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;->access$000(Lcom/amazon/sitb/android/plugin/content/UpsellContentPlugin;)Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;-><init>(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V

    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/content/UpsellContentPluginStarter;->start()V

    const/4 p1, 0x0

    return-object p1
.end method
