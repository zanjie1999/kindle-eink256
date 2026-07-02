.class Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportClutchHiddenMetric(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;I)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    iput p2, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doubletime_clutch_shown"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;->val$location:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "doubletime_clutch_context"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
