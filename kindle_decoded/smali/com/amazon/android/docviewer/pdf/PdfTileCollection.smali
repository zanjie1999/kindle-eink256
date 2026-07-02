.class public Lcom/amazon/android/docviewer/pdf/PdfTileCollection;
.super Ljava/lang/Object;
.source "PdfTileCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;
    }
.end annotation


# static fields
.field private static final CONCURRENCY_LEVEL:I = 0x10

.field static NEW_TILE_DEFAULT_COLOR:I = -0x1

.field static final NO_MEMORY_LIMIT:I = -0x1

.field private static final STARTING_ZOOM_LEVELS:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static final TILE_OPTIONS_CACHE_ONLY:I = 0x1

.field static final TILE_OPTIONS_DEFAULT:I = 0x0

.field private static final ZOOM_TABLE_LOADING_FACTOR:F = 1.0f

.field static final m_debug:Z = false


# instance fields
.field private final m_TilesForAllZoomLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;",
            ">;"
        }
    .end annotation
.end field

.field private m_isBitmapAllocationEnabled:Z

.field private final m_maximumMemoryToUse:J

.field private final m_pageIndex:I

.field private final m_tileHeight:I

.field private final m_tileWidth:I

.field private final m_topLevelZoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJIII)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_isBitmapAllocationEnabled:Z

    .line 90
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_pageIndex:I

    .line 91
    iput-wide p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_maximumMemoryToUse:J

    .line 92
    iput p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileWidth:I

    .line 93
    iput p5, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileHeight:I

    .line 94
    iput p6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_topLevelZoom:I

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Creating collection for:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileWidth:I

    iget p5, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileHeight:I

    mul-int p4, p4, p5

    mul-int/lit8 p4, p4, 0x4

    int-to-long p4, p4

    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " tiles"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Creating collection with invalid tile dimensions. width: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfPage;JIII)V
    .locals 7

    .line 82
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;-><init>(IJIII)V

    return-void
.end method

.method private allocateNewBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 626
    :try_start_0
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileWidth:I

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    sget v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->NEW_TILE_DEFAULT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to allocate bitmap with width or height of <= 0"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :catch_1
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string v2, "Out of memory allocating bitmap"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getBytesUsed()J
    .locals 5

    .line 639
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    .line 640
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getBytesUsed()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private lookupTile(III)Lcom/amazon/android/docviewer/pdf/PdfTile;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 526
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getTile(II)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object p1

    return-object p1
.end method

.method private reclaimBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 585
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 588
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_topLevelZoom:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    .line 593
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 595
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getRecycleBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 607
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 610
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getRecycleBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    .line 616
    :cond_6
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string v0, "Unable to reclaim any tiles"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private renderZoomIn(IILandroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    .line 437
    div-int v12, p2, v10

    .line 438
    invoke-direct {v9, v12, v10, v11}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setTileOutsideAreaNotVisible(IILandroid/graphics/Rect;)V

    .line 442
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 443
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 445
    iget v0, v11, Landroid/graphics/Rect;->top:I

    div-int/2addr v0, v12

    move v15, v0

    :goto_0
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v0, v12

    if-gt v15, v0, :cond_2

    .line 446
    iget v0, v11, Landroid/graphics/Rect;->left:I

    div-int/2addr v0, v12

    move v8, v0

    :goto_1
    iget v0, v11, Landroid/graphics/Rect;->right:I

    div-int/2addr v0, v12

    if-gt v8, v0, :cond_1

    .line 448
    invoke-direct {v9, v10, v15, v8}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->lookupTile(III)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v7

    if-nez v7, :cond_0

    .line 450
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tile from previous zoom level expected to be available:Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v8

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v15

    move v3, v8

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p2

    move-object v9, v7

    move-object v7, v13

    move/from16 v16, v8

    move-object v8, v14

    .line 456
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->renderZoomInForTile(Lcom/amazon/android/docviewer/pdf/PdfTile;IILandroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 458
    invoke-virtual {v9, v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->trySetVisible(Z)Z

    :goto_2
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v9, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final renderZoomInForTile(Lcom/amazon/android/docviewer/pdf/PdfTile;IILandroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 14

    move/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v10, p8

    .line 466
    div-int v11, p6, v2

    .line 470
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_0

    .line 472
    sget-object v4, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap from previous zoom level expected to be available:Z"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":R"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":C"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    mul-int v2, v0, v11

    :goto_0
    add-int/lit8 v4, v0, 0x1

    mul-int v4, v4, v11

    if-ge v2, v4, :cond_9

    mul-int v4, p3, v11

    move v13, v4

    :goto_1
    add-int/lit8 v4, p3, 0x1

    mul-int v4, v4, v11

    if-ge v13, v4, :cond_8

    .line 478
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_7

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_7

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-lt v13, v4, :cond_7

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v13, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    move/from16 v5, p6

    move v8, v2

    move v9, v13

    .line 483
    invoke-virtual/range {v4 .. v9}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 485
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->allocateBitmapIfNecessary()V

    :cond_2
    if-eqz v4, :cond_6

    .line 487
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 492
    :cond_3
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 496
    :cond_4
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v12, :cond_5

    .line 498
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Matrix;->reset()V

    neg-int v5, v13

    .line 500
    rem-int/2addr v5, v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v5, v5, v6

    div-int/2addr v5, v11

    int-to-float v5, v5

    neg-int v6, v2

    rem-int/2addr v6, v11

    .line 501
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v6, v6, v4

    div-int/2addr v6, v11

    int-to-float v4, v6

    .line 500
    invoke-virtual {v10, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, v11

    .line 502
    invoke-virtual {v10, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    .line 503
    invoke-virtual {v3, v12, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    .line 505
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_3

    .line 488
    :cond_6
    :goto_2
    sget-object v4, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string v5, "Unable to get a new tile for zooming in"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method private renderZoomOut(IILandroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    .line 359
    iget-object v0, v9, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez v11, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 365
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 368
    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getRowFromKey(I)I

    move-result v2

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getColumnFromKey(I)I

    move-result v3

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move-object v8, v13

    .line 374
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->renderZoomOutForTile(Lcom/amazon/android/docviewer/pdf/PdfTile;IILandroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 376
    invoke-virtual {v15, v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->trySetVisible(Z)Z

    goto :goto_0

    .line 380
    :cond_1
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move v6, v0

    :goto_1
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v0, :cond_3

    .line 381
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move v7, v0

    :goto_2
    iget v0, v10, Landroid/graphics/Rect;->right:I

    if-gt v7, v0, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v4, v6

    move v5, v7

    .line 382
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final renderZoomOutForTile(Lcom/amazon/android/docviewer/pdf/PdfTile;IILandroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    .line 390
    div-int v0, p5, p6

    .line 391
    div-int v5, p2, v0

    .line 392
    div-int v6, p3, v0

    .line 394
    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-lt v5, v1, :cond_6

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v1, :cond_6

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-lt v6, v1, :cond_6

    iget p4, p4, Landroid/graphics/Rect;->right:I

    if-le v6, p4, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p6

    .line 400
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 402
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->allocateBitmapIfNecessary()V

    :cond_1
    if-eqz p4, :cond_5

    .line 404
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p6

    if-nez p6, :cond_2

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result p6

    if-nez p6, :cond_3

    return-void

    .line 415
    :cond_3
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    .line 416
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 421
    invoke-virtual {p7, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 422
    invoke-virtual {p8}, Landroid/graphics/Matrix;->reset()V

    const/high16 p5, 0x3f800000    # 1.0f

    int-to-float p6, v0

    div-float/2addr p5, p6

    .line 423
    invoke-virtual {p8, p5, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 424
    rem-int/2addr p3, v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    mul-int p3, p3, p5

    div-int/2addr p3, v0

    int-to-float p3, p3

    rem-int/2addr p2, v0

    .line 425
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    mul-int p2, p2, p4

    div-int/2addr p2, v0

    int-to-float p2, p2

    .line 424
    invoke-virtual {p8, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p2, 0x0

    .line 426
    invoke-virtual {p7, p1, p8, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 428
    :cond_4
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Bitmap from previous zoom level expected to be available:Z"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ":R"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ":C"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 430
    invoke-virtual {p4, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-void

    .line 405
    :cond_5
    :goto_1
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string p2, "Unable to get a new bitmap for zooming out"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setTileOutsideAreaNotVisible(IILandroid/graphics/Rect;)V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez p2, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 343
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getRowFromKey(I)I

    move-result v2

    mul-int v2, v2, p1

    .line 344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getColumnFromKey(I)I

    move-result v3

    mul-int v3, v3, p1

    .line 346
    iget v4, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v4, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v3, v2, :cond_2

    if-le v3, v4, :cond_1

    .line 348
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->trySetVisible(Z)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setTileVisible(Lcom/amazon/android/docviewer/pdf/PdfTile;ZIII)V
    .locals 0

    .line 328
    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->trySetVisible(Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 329
    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setNeedsRender(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method clearAllPendingTiles()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    .line 295
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 v3, 0x0

    .line 296
    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setPendingRender(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearPendingTiles(I)V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfTileCollection:clearPendingTiles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setPendingRender(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method close()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    .line 305
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 306
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTile;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getNewBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    .line 552
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_isBitmapAllocationEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getBytesUsed()J

    move-result-wide v0

    .line 563
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileWidth:I

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_tileHeight:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    .line 564
    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_maximumMemoryToUse:J

    sub-long v2, v4, v2

    sub-long/2addr v2, v0

    const-wide/16 v0, -0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 566
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->reclaimBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->allocateNewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 573
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->reclaimBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method getTile(IZIII)Lcom/amazon/android/docviewer/pdf/PdfTile;
    .locals 9

    const/4 v0, 0x0

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    const v1, 0xffff

    if-gt p4, v1, :cond_4

    if-gt p5, v1, :cond_4

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez v1, :cond_1

    .line 175
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;Lcom/amazon/android/docviewer/pdf/PdfTileCollection$1;)V

    .line 176
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    invoke-virtual {v1, p4, p5}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getTile(II)Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-result-object v0

    and-int/2addr p3, v2

    if-eqz p3, :cond_2

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 189
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/amazon/android/docviewer/pdf/PdfTile;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;IZZ)V

    .line 190
    invoke-virtual {v1, v0, p4, p5}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->putTile(Lcom/amazon/android/docviewer/pdf/PdfTile;II)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    move-object v4, v0

    move v5, p2

    move v6, p1

    move v7, p4

    move v8, p5

    .line 192
    invoke-direct/range {v3 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setTileVisible(Lcom/amazon/android/docviewer/pdf/PdfTile;ZIII)V

    :goto_0
    return-object v0

    .line 167
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string p2, "Illegal arguments to getTile"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method recycle(I)V
    .locals 2

    .line 313
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_topLevelZoom:I

    if-ne p1, v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-eqz p1, :cond_2

    .line 319
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 320
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->pendingRender()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->recycle()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method setNewBitmapAllocationsEnabled(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_isBitmapAllocationEnabled:Z

    return-void
.end method

.method setVisibleArea(ILandroid/graphics/Rect;)V
    .locals 10

    .line 252
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;Lcom/amazon/android/docviewer/pdf/PdfTileCollection$1;)V

    .line 256
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 262
    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getRowFromKey(I)I

    move-result v8

    .line 263
    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;->getColumnFromKey(I)I

    move-result v9

    .line 265
    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v8, v3, :cond_1

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v3, :cond_1

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v9, v3, :cond_1

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v9, v3, :cond_1

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 268
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/android/docviewer/pdf/PdfTile;

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->setTileVisible(Lcom/amazon/android/docviewer/pdf/PdfTile;ZIII)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Page: "

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 119
    invoke-virtual {v9}, Lcom/amazon/android/docviewer/pdf/PdfTile;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 123
    :goto_2
    invoke-virtual {v9}, Lcom/amazon/android/docviewer/pdf/PdfTile;->needsRender()Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 125
    :cond_3
    invoke-virtual {v9}, Lcom/amazon/android/docviewer/pdf/PdfTile;->pendingRender()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 127
    :cond_4
    invoke-virtual {v9}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v3, " Zoom:"

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", visible:"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", nonVis:"

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", needsR: "

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " pendingR:"

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", bitmaps:"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 146
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateTilesFromZoomLevel(IILandroid/graphics/Rect;)V
    .locals 2

    if-eq p1, p2, :cond_4

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfTileCollection:updateTilesFromZoomLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-le p1, p2, :cond_1

    .line 218
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->renderZoomIn(IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->renderZoomOut(IILandroid/graphics/Rect;)V

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->m_TilesForAllZoomLevels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection$TilesForOneZoomLevel;

    if-nez p1, :cond_2

    return-void

    .line 228
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfTile;->trySetVisible(Z)Z

    goto :goto_1

    :cond_3
    return-void

    .line 210
    :cond_4
    :goto_2
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->TAG:Ljava/lang/String;

    const-string p2, "Unexpected zoom change"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
