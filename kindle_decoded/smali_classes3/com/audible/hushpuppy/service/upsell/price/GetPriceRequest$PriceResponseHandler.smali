.class final Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;
.super Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;
.source "GetPriceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PriceResponseHandler"
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/download/AbstractHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;-><init>(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;)V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 4

    .line 189
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/common/http/HttpStatus;-><init>(I)V

    .line 190
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Price Request completed with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p2, p1, :cond_0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    iget-object p2, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;->response:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->access$200(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;->this$0:Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    invoke-static {p1}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->access$300(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;)V

    .line 195
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->AudiobookPriceError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :goto_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->AudiobookPriceTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    if-nez p1, :cond_0

    .line 173
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Response body input stream was null for Get Price request."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 180
    :try_start_1
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v1

    const-string v2, "Error processing input stream from Get Price request"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 182
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 183
    throw v0
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
