.class Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "WebserviceCoverProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/WebserviceCoverProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebserviceCoverProviderResultResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Lcom/amazon/kindle/cover/ICoverBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field book:Lcom/amazon/kindle/model/content/IListableBook;

.field contentType:Ljava/lang/String;

.field coverId:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->url:Ljava/lang/String;

    .line 364
    iput-object p2, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    .line 365
    iput-object p3, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 366
    iput-object p4, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->coverId:Ljava/lang/String;

    .line 367
    iput-object p5, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 1

    .line 372
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iput-object p1, p0, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->contentType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Download failed for "

    const-string v0, "GetWebserviceCover"

    .line 381
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 383
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    const-string v5, "WebserviceCoverProvider"

    const-string v6, "attempts"

    invoke-virtual {v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 385
    :try_start_0
    iget-object v6, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    .line 386
    iget-object v7, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v7}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v7

    .line 387
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x8000

    move-object/from16 v9, p1

    .line 390
    invoke-static {v9, v3, v8}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    move-result v8

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 393
    iget-object v11, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->contentType:Ljava/lang/String;

    invoke-static {v11}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$200(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 394
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " gives content-type \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->contentType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 446
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    return-void

    .line 398
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v11

    const-string v12, "WebserviceCoverProviderTimer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 399
    invoke-virtual {v14}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    .line 400
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v0}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v11, v12, v13, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v8, :cond_1

    .line 403
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v14

    const-string v15, "WebserviceCoverProviderTimer"

    const-string v16, "GetWebserviceCoverPerKB"

    sget-object v17, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    sub-long/2addr v9, v6

    const-wide/16 v6, 0x3e8

    mul-long v9, v9, v6

    int-to-long v6, v8

    div-long v18, v9, v6

    invoke-virtual/range {v14 .. v19}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    :cond_1
    const/16 v0, 0x32a

    if-le v8, v0, :cond_2

    .line 409
    iget-object v0, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v7

    .line 410
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    .line 411
    new-instance v0, Lcom/amazon/kindle/cover/Cover;

    iget-object v8, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->coverId:Ljava/lang/String;

    iget-object v9, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->filename:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v6}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/kindle/cover/Cover;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 413
    invoke-virtual {v0}, Lcom/amazon/kindle/cover/Cover;->getCoverSize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v7

    .line 414
    invoke-static {v4}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v8

    iget-object v9, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v9}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v8

    .line 415
    invoke-static {v4}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v9

    iget-object v10, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v10}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v7

    .line 416
    invoke-static {v6}, Lcom/amazon/kcp/util/images/BitmapHelper;->getSourceSize([B)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v9

    const v10, 0x3e4ccccd    # 0.2f

    .line 418
    invoke-static {v8, v7, v10}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v7

    .line 417
    invoke-static {v6, v9, v7}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 419
    new-instance v8, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;

    iget-object v9, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-direct {v8, v0, v9, v6, v7}, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;-><init>(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/model/content/IListableBook;[BLandroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string/jumbo v6, "success"

    invoke-virtual {v0, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v8

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 424
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Webservice cover was too small("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes), ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cover for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was too small("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes)."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string/jumbo v6, "tooSmallError"

    invoke-virtual {v0, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v4

    .line 440
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to read from Input Stream"

    invoke-static {v6, v7, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 443
    :try_start_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string/jumbo v2, "streamClosedError"

    invoke-virtual {v0, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 445
    :goto_1
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 446
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v8, v4

    .line 432
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Webservice download failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    invoke-static {}, Lcom/amazon/kcp/cover/WebserviceCoverProvider;->access$300()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/amazon/kcp/cover/WebserviceCoverProvider$WebserviceCoverProviderResultResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 435
    :try_start_7
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "downloadFailedError"

    invoke-virtual {v0, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    move-object v4, v8

    .line 445
    :goto_4
    invoke-static {v3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 446
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V

    .line 447
    throw v0
.end method
