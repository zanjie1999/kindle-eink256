.class Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;
.super Ljava/lang/Object;
.source "AssetDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 6

    .line 149
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$100(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/IFileProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing downloaded file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v1}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$300(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getSha256()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v4}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$200(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/amazon/kedu/ftue/assets/AssetFileHelper;->getSha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 160
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checksum failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v5}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$300(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " can\'t unpack, deleting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object p2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 163
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v4

    sget-object v5, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_CORRUPT:Lcom/amazon/kedu/ftue/metrics/Metric;

    xor-int/2addr v1, v2

    invoke-virtual {v4, v5, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 164
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_INTERRUPTED:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    goto :goto_1

    .line 168
    :cond_2
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v1

    sget-object v3, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_INTERRUPTED:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, v3, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 171
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v3}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$400(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 172
    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p2, v3, :cond_3

    .line 174
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_FAILURE_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v3, v4, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportTimerMetric(Lcom/amazon/kedu/ftue/metrics/Metric;J)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 179
    :cond_3
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportTimerMetric(Lcom/amazon/kedu/ftue/metrics/Metric;J)V

    .line 182
    :goto_2
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$500(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reporting download complete to handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$500(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest$1;->this$0:Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    invoke-static {v1}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;->access$300(Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;)Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/RemoteAsset;)V

    :cond_4
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
