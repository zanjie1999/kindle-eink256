.class public Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "BrochureAssetDownloadResponseHandler.java"


# static fields
.field private static final DOWNLOAD_LATENCY:Ljava/lang/String; = "DownloadLatency"

.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private cleanUp()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getMetricTimerKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->METRICS_NAME:Ljava/lang/String;

    const-string v3, "DownloadLatency"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 78
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset is available at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download the asset: status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->setException(Ljava/lang/Exception;)V

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->cleanUp()V

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 104
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 105
    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->cleanUp()V

    .line 112
    iget-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Downloaded the asset to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    :try_start_1
    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create a file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->setException(Ljava/lang/Exception;)V

    .line 109
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->cleanUp()V

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 113
    throw p1
.end method

.method public setRequest(Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;->request:Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    return-void
.end method
