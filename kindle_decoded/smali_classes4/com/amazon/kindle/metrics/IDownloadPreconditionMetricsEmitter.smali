.class public interface abstract Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;
.super Ljava/lang/Object;
.source "DownloadPreconditionMetricsEmitter.kt"


# virtual methods
.method public abstract emitFileSystemFullMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JZ)V
.end method

.method public abstract emitFileSystemWriteErrorMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V
.end method

.method public abstract emitNoConnectionMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
.end method
