.class Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportShareButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doubletime_share_button_pressed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "doubletime_session_context"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
