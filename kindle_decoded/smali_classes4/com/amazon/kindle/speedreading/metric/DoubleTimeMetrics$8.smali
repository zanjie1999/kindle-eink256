.class Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportStartDoubleTimeLooperMetric(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

.field final synthetic val$location:I

.field final synthetic val$wpm:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;II)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    iput p2, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->val$location:I

    iput p3, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->val$wpm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "doubletime_looping_timer"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    iget v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->val$location:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "location"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->val$wpm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wpm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "doubletime_session_context"

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$202(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;J)J

    return-void
.end method
