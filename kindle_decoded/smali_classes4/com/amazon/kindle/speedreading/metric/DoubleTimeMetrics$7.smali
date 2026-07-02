.class Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportDoubleTimeEntered()V
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

    .line 209
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doubletime_entered"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "doubletime_running_timer"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asin"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "guid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timezone"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "timezoneRawOffset"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;->this$0:Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v2, "doubletime_context"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
