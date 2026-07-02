.class public Lcom/amazon/nwstd/model/replica/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;,
        Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
    }
.end annotation


# static fields
.field private static final BIG_QUALITY_SIZE:I = 0x640

.field private static DEBUG:Z = false

.field private static final LOW_QUALITY_ROUNDING_FACTOR:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

.field private isClosed:Z

.field private mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

.field private mBitmapUpdateObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

.field private mCacheMaxSize:I

.field private mPoolMaxSize:I

.field private priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

.field private referenceImageRatio:F

.field private referenceThumbnailImageRatio:F

.field private replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 649
    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->referenceImageRatio:F

    .line 650
    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->referenceThumbnailImageRatio:F

    const/4 v0, 0x0

    .line 652
    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCacheMaxSize:I

    .line 653
    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mPoolMaxSize:I

    .line 45
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed:Z

    .line 46
    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    .line 47
    new-instance p1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    sget-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;-><init>(ILcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    .line 48
    new-instance p1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    sget-object v0, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->Low:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;-><init>(ILcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    .line 49
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    .line 51
    new-instance p1, Lcom/amazon/nwstd/model/replica/BitmapPool;

    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCacheMaxSize:I

    invoke-direct {p1, v0}, Lcom/amazon/nwstd/model/replica/BitmapPool;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    .line 52
    new-instance v0, Lcom/amazon/nwstd/model/replica/BitmapCache;

    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mPoolMaxSize:I

    invoke-direct {v0, v1, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;-><init>(ILcom/amazon/nwstd/model/replica/BitmapPool;)V

    iput-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    return-void
.end method

.method private getBitmapFromPool(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 413
    new-instance v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;II)V

    .line 421
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    monitor-enter p1

    .line 422
    :try_start_0
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    invoke-virtual {p2, v0}, Lcom/amazon/nwstd/utils/LRUObjectPool;->pop(Lcom/amazon/nwstd/utils/LRUObjectPool$Filter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 423
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private getBitmapFromPoolOrCreate(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapFromPool(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;
    .locals 1

    .line 527
    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p2, v0, :cond_0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadBitmap_(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 296
    new-instance v3, Lcom/amazon/nwstd/performance/utils/Chronometer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/amazon/nwstd/performance/utils/Chronometer;-><init>(Z)V

    const/4 v5, 0x0

    .line 302
    :try_start_0
    sget-object v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$4;->$SwitchMap$com$amazon$nwstd$model$replica$BitmapProvider$ImageQuality:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    const/4 v4, 0x5

    if-eq v6, v4, :cond_0

    move-object v4, v5

    goto/16 :goto_4

    .line 359
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->keepOriginal()Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v4

    .line 360
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v6, v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v6, :cond_6

    .line 363
    :try_start_1
    invoke-virtual {v6, v4}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/16 :goto_3

    .line 328
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->keepOriginal()Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v6

    .line 329
    iget-object v8, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v8, v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_3

    .line 332
    :try_start_3
    invoke-virtual {v8, v6}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 333
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v9, 0x640

    if-gt v6, v9, :cond_2

    :try_start_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-le v6, v9, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto/16 :goto_6

    .line 336
    :cond_2
    :goto_0
    :try_start_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    const/4 v11, 0x0

    invoke-static {v5, v11, v11, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 337
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/2addr v13, v7

    invoke-static {v5, v11, v10, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 339
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, 0x44c80000    # 1600.0f

    mul-float v12, v12, v13

    float-to-int v12, v12

    .line 342
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 343
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 345
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 346
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 348
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v4, v11, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    .line 349
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 p3, v8

    :try_start_6
    div-int/lit8 v8, v16, 0x2

    invoke-direct {v14, v11, v11, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 348
    invoke-virtual {v12, v6, v4, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 350
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v11, v11, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    .line 351
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/2addr v8, v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v6, v11, v8, v7, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    invoke-virtual {v12, v10, v4, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 352
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 p3, v8

    :goto_1
    move-object/from16 v5, p3

    goto/16 :goto_6

    :cond_3
    move-object/from16 p3, v8

    :goto_2
    move-object v4, v5

    move-object/from16 v5, p3

    goto :goto_4

    :cond_4
    const v4, 0x3e4ccccd    # 0.2f

    move/from16 v6, p3

    .line 314
    :try_start_7
    invoke-static {v2, v6, v4}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v4

    .line 316
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v6, v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_6

    .line 320
    :try_start_8
    new-instance v5, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v8

    invoke-direct {v5, v7, v8}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 321
    invoke-static {v5, v4}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v5

    .line 323
    iget v7, v5, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v5, v5, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {v1, v7, v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapFromPoolOrCreate(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 324
    invoke-virtual {v6, v5, v4}, Lcom/amazon/android/docviewer/ImageProvider;->updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 305
    :cond_5
    :try_start_9
    invoke-static {}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->keepOriginal()Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v4

    .line 306
    iget-object v6, v1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v6, v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v6, :cond_6

    .line 309
    :try_start_a
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v7

    invoke-direct {v1, v5, v7}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapFromPoolOrCreate(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 310
    invoke-virtual {v6, v5, v4}, Lcom/amazon/android/docviewer/ImageProvider;->updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v5, v6

    goto :goto_6

    :cond_6
    :goto_3
    move-object v4, v5

    move-object v5, v6

    :goto_4
    if-eqz v5, :cond_7

    .line 372
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    .line 376
    :cond_7
    sget-boolean v5, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v5, :cond_8

    :try_start_b
    const-string v5, "BitmapProvider"

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapLoad disk i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " width="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " loaded in  m="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/nwstd/performance/utils/Chronometer;->elapsedTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms q="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-object v4

    :catchall_4
    move-exception v0

    :goto_6
    if-eqz v5, :cond_9

    .line 372
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    .line 374
    :cond_9
    throw v0
.end method

.method private loadCachedBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 10

    .line 146
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCachedBitmap(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-boolean v2, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCachedBitmap LOCK BEGIN(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " quality="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 164
    :cond_2
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p4, v2, :cond_b

    .line 166
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object v5, v1

    :goto_0
    sget-object v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-lt v2, v6, :cond_8

    .line 167
    invoke-static {}, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->values()[Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v5

    aget-object v5, v5, v2

    .line 168
    invoke-direct {p0, p1, v5, p2, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;

    move-result-object v6

    .line 170
    iget-object v7, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v7, v6}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getUnsafe(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;

    move-result-object v7

    .line 172
    sget-boolean v8, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadCachedBitmap: trying image: k="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " cacheElt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_3

    const-string v9, "null"

    goto :goto_1

    :cond_3
    move-object v9, v7

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_4
    if-eqz v7, :cond_5

    .line 176
    invoke-virtual {v7}, Lcom/amazon/nwstd/model/replica/CacheElt;->tryAcquire()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    .line 180
    sget-object v8, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v5, v8, :cond_6

    .line 184
    invoke-virtual {v7}, Lcom/amazon/nwstd/model/replica/CacheElt;->acquire()V

    :goto_2
    move-object p4, v5

    move-object v5, v6

    move-object v1, v7

    goto :goto_3

    .line 187
    :cond_6
    sget-boolean v5, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadCachedBitmap: image not selected: k="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cacheElt="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    move-object v5, v6

    goto :goto_0

    .line 191
    :cond_8
    :goto_3
    sget-boolean v2, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCachedBitmap: image quality default resolved to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 193
    :cond_9
    sget-object v2, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Default:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p4, v2, :cond_a

    .line 194
    sget-object p4, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 196
    :cond_a
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 198
    :cond_b
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getUnsafe(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 201
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->acquire()V

    .line 205
    :cond_c
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_4
    sget-object v6, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-lt v5, v6, :cond_e

    .line 206
    invoke-static {}, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->values()[Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v6

    aget-object v6, v6, v5

    .line 207
    iget-object v7, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-direct {p0, p1, v6, p2, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/nwstd/model/replica/BitmapCache;->existsUnsafe(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_e
    move-object v6, p4

    :goto_5
    if-eq v6, p4, :cond_10

    .line 217
    sget-boolean v5, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCachedBitmap: image quality has changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_f
    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v5, 0x0

    :goto_7
    if-nez v1, :cond_12

    .line 224
    sget-boolean v1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCachedBitmap: new image(k="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") cacheElt=null"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 226
    :cond_11
    new-instance v1, Lcom/amazon/nwstd/model/replica/CacheElt;

    invoke-direct {v1, p1, p4}, Lcom/amazon/nwstd/model/replica/CacheElt;-><init>(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 227
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->acquire()V

    .line 228
    iget-object v6, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v6, v2, v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->addUnsafe(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)Lcom/amazon/nwstd/model/replica/CacheElt;

    const/4 v6, 0x1

    goto :goto_8

    :cond_12
    const/4 v6, 0x0

    .line 232
    :goto_8
    sget-boolean v7, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v7, :cond_13

    const-string v7, "loadCachedBitmap LOCK END"

    invoke-direct {p0, v7}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 233
    :cond_13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v6, :cond_15

    .line 240
    :try_start_1
    iput p2, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->width:I

    .line 241
    iput p3, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->height:I

    .line 242
    iput-object p4, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadBitmap_(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    .line 245
    sget-boolean p3, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p3, :cond_14

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadCachedBitmap load end b="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 247
    :cond_14
    iput p1, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->id:I

    goto :goto_9

    .line 251
    :cond_15
    iget-object p2, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->b:Landroid/graphics/Bitmap;

    .line 252
    sget-boolean p1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p1, :cond_16

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadCachedBitmap: image already exists("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") b="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ref="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->getRefCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cacheElt="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 254
    :cond_16
    :goto_9
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->addRef()V

    .line 255
    iget p1, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->id:I

    .line 256
    iget-object p3, v1, Lcom/amazon/nwstd/model/replica/CacheElt;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    if-eqz v6, :cond_17

    .line 270
    iget-object p4, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter p4

    .line 271
    :try_start_2
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updatedElement(Lcom/amazon/nwstd/model/replica/CacheElt;)V

    .line 272
    monitor-exit p4

    goto :goto_a

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 276
    :cond_17
    :goto_a
    sget-boolean p4, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p4, :cond_18

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadCachedBitmapEffective load end k="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " b="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ref="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->getRefCount()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_18
    if-eqz v5, :cond_19

    .line 280
    invoke-direct {p0, p1, p3}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->notifyBitmapChanged(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    .line 283
    :cond_19
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    :goto_b
    const-string p1, "Bitmap should not be null"

    .line 284
    invoke-static {v3, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 286
    :cond_1b
    new-instance p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    invoke-direct {p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;-><init>()V

    .line 287
    iput-object p2, p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 288
    iput-object p3, p1, Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;->quality:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_c

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "BitmapProvider"

    const-string p3, "Unhandled exception while loading bitmap"

    .line 258
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v6, :cond_1c

    .line 262
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {p2, v2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->remove(Ljava/lang/String;)V

    .line 264
    :cond_1c
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    :goto_c
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    if-eqz v6, :cond_1d

    .line 270
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter p2

    .line 271
    :try_start_4
    iget-object p3, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {p3, v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->updatedElement(Lcom/amazon/nwstd/model/replica/CacheElt;)V

    .line 272
    monitor-exit p2

    goto :goto_d

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 274
    :cond_1d
    :goto_d
    throw p1

    :catchall_3
    move-exception p1

    .line 233
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 4

    .line 536
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "[NWSSTD.bitmapcache:%d ]: BitmapLoad i=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method private notifyBitmapChanged(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V
    .locals 3

    .line 516
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBitmapChanged(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 519
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;

    .line 521
    invoke-interface {v2, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;->onBitmapUpdate(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    goto :goto_0

    .line 523
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private release_(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)V
    .locals 2

    .line 504
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release_(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") refCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->getRefCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->removeRef()V

    .line 509
    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->getRefCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 510
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removing from cache cacheElt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 511
    :cond_1
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {p2, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->removeUnsafe(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 8

    .line 70
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncLoadBitmapO(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;

    new-instance v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider$1;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    invoke-direct {v0, p0, p1, p5, v7}, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProviderObserver;Ljava/util/concurrent/Callable;)V

    .line 85
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->submit(Lcom/amazon/nwstd/model/replica/Job;)V

    :cond_1
    return-object v0
.end method

.method public asyncLoadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 8

    .line 94
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncLoadBitmap(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    new-instance v0, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;

    new-instance v7, Lcom/amazon/nwstd/model/replica/BitmapProvider$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/nwstd/model/replica/BitmapProvider$2;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)V

    invoke-direct {v0, p0, p1, p5, v7}, Lcom/amazon/nwstd/model/replica/BitmapLoadJobImpl;-><init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;ILcom/amazon/nwstd/model/replica/BitmapProviderObserver;Ljava/util/concurrent/Callable;)V

    .line 110
    sget-object p1, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;->High:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor$Priority;

    if-ne p6, p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->submit(Lcom/amazon/nwstd/model/replica/Job;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->submit(Lcom/amazon/nwstd/model/replica/Job;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->shutdown()V

    const/4 v1, 0x0

    .line 546
    iput-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    .line 547
    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->shutdown()V

    .line 548
    iput-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    .line 549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 553
    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    monitor-enter v2

    .line 554
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 555
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 559
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 560
    :try_start_2
    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->freeMemory()V

    .line 561
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    iget-object v2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    monitor-enter v2

    .line 565
    :try_start_3
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/amazon/nwstd/utils/LRUObjectPool;->trimToSize(I)V

    .line 566
    iput-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    .line 567
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed:Z

    return-void

    :catchall_0
    move-exception v0

    .line 567
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 561
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 555
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 549
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public freeMemory()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->freeMemory()V

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    monitor-enter v1

    .line 604
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/nwstd/utils/LRUObjectPool;->trimToSize(I)V

    .line 605
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 601
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBitmapCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->size()I

    move-result v0

    return v0
.end method

.method public getReferenceImageRatio()F
    .locals 2

    .line 60
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->referenceImageRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->replicaList:Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;

    invoke-interface {v0}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/model/replica/IReplicaPageItemList;->get(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getImageRatio()F

    move-result v0

    iput v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->referenceImageRatio:F

    .line 64
    :cond_0
    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->referenceImageRatio:F

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->isClosed:Z

    return v0
.end method

.method public loadBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;
    .locals 0

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->loadCachedBitmap(IIILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;)Lcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->pause()V

    .line 584
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->pause()V

    .line 586
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerBitmapObserver(Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)V
    .locals 2

    .line 477
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing begin b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->getKey(ILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;II)Ljava/lang/String;

    move-result-object p1

    .line 480
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {p2, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->get(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 485
    :cond_1
    iget-object p3, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter p3

    .line 486
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release_(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :try_start_2
    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    .line 495
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 497
    sget-boolean p1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Releasing end"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/amazon/nwstd/model/replica/CacheElt;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p4, "BitmapProvider"

    const-string v0, "Unhandled exception while releasing a bitmap"

    .line 490
    invoke-static {p4, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 493
    :goto_0
    :try_start_4
    invoke-virtual {p2}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    .line 494
    throw p1

    :catchall_1
    move-exception p1

    .line 495
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 436
    :cond_0
    sget-boolean v0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing begin b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getBitmapKey(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "BitmapProvider"

    const-string v0, "Bitmap to be released not found in the bitmap provider cache"

    .line 441
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->getUnsafe(Ljava/lang/String;)Lcom/amazon/nwstd/model/replica/CacheElt;

    move-result-object v1

    .line 449
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Trying to release an invalid key"

    .line 450
    invoke-static {v2, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_4
    if-nez v1, :cond_6

    .line 453
    sget-boolean p1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Releasing end: bitmap was already recycled"

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    .line 454
    :cond_5
    monitor-exit v0

    return-void

    .line 457
    :cond_6
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->release_(Ljava/lang/String;Lcom/amazon/nwstd/model/replica/CacheElt;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    .line 466
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    sget-boolean p1, Lcom/amazon/nwstd/model/replica/BitmapProvider;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "Releasing end"

    invoke-direct {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider;->log(Ljava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    const-string v2, "BitmapProvider"

    const-string v3, "Unhandled exception while releasing a bitmap"

    .line 461
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/CacheElt;->release()V

    .line 465
    throw p1

    :catchall_1
    move-exception p1

    .line 466
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public resume()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->imgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->resume()V

    .line 594
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->priorityImgLoaderExecutor:Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ImageLoaderExecutor;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCacheMaxSize(I)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    monitor-enter v0

    .line 617
    :try_start_0
    iput p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCacheMaxSize:I

    .line 618
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mCache:Lcom/amazon/nwstd/model/replica/BitmapCache;

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/model/replica/BitmapCache;->setMaxSize(I)V

    .line 619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPoolMaxSize(I)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    monitor-enter v0

    .line 630
    :try_start_0
    iput p1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mPoolMaxSize:I

    .line 631
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapPool:Lcom/amazon/nwstd/model/replica/BitmapPool;

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/utils/LRUObjectPool;->setMaxSize(I)V

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterBitmapObserver(Lcom/amazon/nwstd/model/replica/BitmapProviderUpdateObserver;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider;->mBitmapUpdateObservers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
