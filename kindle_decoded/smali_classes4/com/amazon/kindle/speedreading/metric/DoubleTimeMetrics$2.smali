.class Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportBackButtonMetric(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

.field final synthetic val$isClutchEnabled:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    iput-boolean p2, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->val$isClutchEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->val$isClutchEnabled:Z

    const-string v1, "back_button"

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doubletime_back_button"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "doubletime_context"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doubletime_back_button_clutch"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "doubletime_clutch_context"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
