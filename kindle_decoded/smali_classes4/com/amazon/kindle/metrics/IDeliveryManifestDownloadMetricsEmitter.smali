.class public interface abstract Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;
.super Ljava/lang/Object;
.source "DeliveryManifestDownloadMetricsEmitter.kt"


# virtual methods
.method public abstract emitErrorManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
.end method

.method public abstract emitManifestParsingFailurePayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;)V
.end method

.method public abstract emitSuccessManifestMetricPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Ljava/lang/String;)V
.end method

.method public abstract emitSuccessManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/metrics/HttpRequestLatencyMetrics;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Ljava/lang/String;)V
.end method
