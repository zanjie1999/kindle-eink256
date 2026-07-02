.class Lcom/amazon/kindle/cover/CoverImageService$4;
.super Ljava/lang/Object;
.source "CoverImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cover/CoverImageService;->scaleCover(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/model/content/IListableBook;ZLcom/amazon/kindle/cover/ImageSizes$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cover/CoverImageService;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/IListableBook;

.field final synthetic val$cover:Lcom/amazon/kindle/cover/ICover;

.field final synthetic val$coverBuilder:Lcom/amazon/kindle/cover/ICoverBuilder;

.field final synthetic val$delay:Z

.field final synthetic val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cover/CoverImageService;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverBuilder;Lcom/amazon/kindle/cover/ICover;Z)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iput-object p2, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    iput-object p3, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$coverBuilder:Lcom/amazon/kindle/cover/ICoverBuilder;

    iput-object p5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$cover:Lcom/amazon/kindle/cover/ICover;

    iput-boolean p6, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$delay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 526
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScaleLargeCoverToSmallCover-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    .line 527
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 528
    invoke-static {v0}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v1

    .line 529
    invoke-static {v0}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v3

    .line 531
    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$coverBuilder:Lcom/amazon/kindle/cover/ICoverBuilder;

    if-nez v4, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lcom/amazon/kindle/cover/ICoverBuilder;->getImageBuffer()[B

    move-result-object v4

    .line 533
    :goto_0
    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 536
    :try_start_0
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v7, "ImageLength"

    const/4 v8, 0x0

    .line 537
    invoke-virtual {v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "ImageWidth"

    .line 538
    invoke-virtual {v6, v9, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 539
    new-instance v8, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v8, v6, v7}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 541
    invoke-static {}, Lcom/amazon/kindle/cover/CoverImageService;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error scaling image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :goto_1
    const v6, 0x3e4ccccd    # 0.2f

    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    .line 544
    invoke-static {v1, v3, v6}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v1

    invoke-static {v4, v8, v1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 546
    :cond_1
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 548
    invoke-static {v1, v3, v6}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 552
    :goto_2
    iget-object v3, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-virtual {v3}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v9

    .line 553
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 557
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v1, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 560
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    new-instance v0, Lcom/amazon/kindle/cover/Cover;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getBookid()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getCoverId()Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 562
    invoke-virtual {v5}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getCoverType()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/amazon/kindle/cover/Cover;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-static {v5}, Lcom/amazon/kindle/cover/CoverImageService;->access$400(Lcom/amazon/kindle/cover/CoverImageService;)Lcom/amazon/kindle/cover/db/CoverDBHelper;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getInstance(Lcom/amazon/kindle/cover/db/CoverDBHelper;)Lcom/amazon/kindle/cover/dao/CoverDAO;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/cover/dao/CoverDAO;->insertOrUpdate(Lcom/amazon/kindle/cover/ICover;)J

    .line 567
    iget-boolean v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$delay:Z

    if-eqz v5, :cond_3

    .line 574
    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/cover/CoverImageService;->onImageUpdated(Lcom/amazon/kindle/cover/ICover;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object v0, v4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-object v0, v4

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto :goto_4

    .line 578
    :catch_2
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 580
    invoke-static {}, Lcom/amazon/kindle/cover/CoverImageService;->access$600()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {v4, v5, v6}, Lcom/amazon/kindle/cover/CoverImageService;->access$500(Lcom/amazon/kindle/cover/CoverImageService;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 582
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_6

    goto :goto_6

    .line 580
    :goto_4
    invoke-static {}, Lcom/amazon/kindle/cover/CoverImageService;->access$600()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {v3, v5, v6}, Lcom/amazon/kindle/cover/CoverImageService;->access$500(Lcom/amazon/kindle/cover/CoverImageService;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 582
    invoke-static {v4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 584
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 586
    :cond_4
    throw v0

    .line 580
    :cond_5
    :goto_5
    invoke-static {}, Lcom/amazon/kindle/cover/CoverImageService;->access$600()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->this$0:Lcom/amazon/kindle/cover/CoverImageService;

    iget-object v5, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$targetImageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-static {v4, v5, v6}, Lcom/amazon/kindle/cover/CoverImageService;->access$500(Lcom/amazon/kindle/cover/CoverImageService;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 582
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_6

    .line 584
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 587
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/cover/CoverImageService$4;->val$book:Lcom/amazon/kindle/model/content/IListableBook;

    .line 588
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverImageServiceTimer"

    const-string v3, "ScaleLargeCoverToSmallCover"

    .line 587
    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
