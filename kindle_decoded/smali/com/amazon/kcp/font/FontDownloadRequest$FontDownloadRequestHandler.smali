.class public Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "FontDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FontDownloadRequestHandler"
.end annotation


# instance fields
.field bytesRead:J

.field outputStream:Ljava/io/OutputStream;

.field statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field totalBytes:J


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    .line 357
    iput-object p2, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-void
.end method


# virtual methods
.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 2

    .line 389
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->totalBytes:J

    .line 392
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    const-string v0, "error closing output stream"

    const/high16 v1, 0x10000

    :try_start_0
    new-array v1, v1, [B

    .line 364
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    .line 366
    iget-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 367
    iget-wide v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->totalBytes:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 368
    iget-wide v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->bytesRead:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->bytesRead:J

    .line 369
    iget-object v2, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    .line 372
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 380
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 382
    invoke-static {}, Lcom/amazon/kcp/font/FontDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 375
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/font/FontDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error streaming content to disk"

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    new-instance p1, Lcom/amazon/kindle/webservices/ResponseHandlerException;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-direct {p1, v1}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 380
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 382
    invoke-static {}, Lcom/amazon/kcp/font/FontDownloadRequest;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    :goto_3
    throw p1
.end method
